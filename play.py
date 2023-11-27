from pydub import AudioSegment
import simpleaudio as sa

def play(file_path):

    # Load the MP3 file
    audio = AudioSegment.from_file(file_path, format="mp3")

    # Convert the audio to raw data
    audio_data = audio.raw_data

    # Play the audio using simpleaudio
    play_obj = sa.play_buffer(audio_data, num_channels=audio.channels, bytes_per_sample=audio.sample_width, sample_rate=audio.frame_rate)

    power_up = 1
    while power_up == 1:
        code = int(input("Digite 1 para parar a musica: ")) 
        if code == 1:
            play_obj.stop()
            power_up = 0
        else:
            continue