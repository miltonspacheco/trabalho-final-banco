from pydub import AudioSegment
import simpleaudio as sa

def play(audio_type, audio_name):
    file_path = f'media/{audio_type}/{audio_name}.mp3'

    # Load the MP3 file
    audio = AudioSegment.from_file(file_path, format="mp3")

    # Convert the audio to raw data
    audio_data = audio.raw_data

    # Play the audio using simpleaudio
    play_obj = sa.play_buffer(audio_data, num_channels=audio.channels, bytes_per_sample=audio.sample_width, sample_rate=audio.frame_rate)

    # Wait for playback to finish
    play_obj.wait_done()

    # To stop the audio, use Ctrl + C